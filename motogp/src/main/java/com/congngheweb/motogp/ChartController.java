package com.congngheweb.motogp;

import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Sort;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

@RestController
@RequestMapping("/api")
@RequiredArgsConstructor
public class ChartController {

    private final ChartRepository repository;

    @PostMapping("/insert")
    @CrossOrigin
    public void insert(@RequestBody Chart chart) {
        List<Integer> points = Arrays.asList(chart.getQat(), chart.getIna(),
                chart.getArg(), chart.getAme(), chart.getPor(), chart.getSpa(),
                chart.getFra(), chart.getIta(), chart.getCat(), chart.getGer(),
                chart.getNed(), chart.getGbr(), chart.getAut(), chart.getRsm(),
                chart.getArg(), chart.getJpn(), chart.getTha(), chart.getAus(),
                chart.getMal(), chart.getVal());
        Integer sum = points.stream()
                .filter(Objects::nonNull)
                .reduce(0, Integer::sum);

        chart.setPoint(sum);
        repository.save(chart);
        updateFields(chart);
        updateRecords();
    }

    private void updateRecords() {
        List<Chart> sorted = repository.findAll(Sort.by("point").descending());
        int leaderPoint = sorted.get(0).getPoint();
        Chart preRider = sorted.get(0);
        for (int i = 1; i < sorted.size() - 1; i++) {  //skip leader
            Chart currentRider = sorted.get(i);

            currentRider.setLeader(leaderPoint - currentRider.getPoint());
            currentRider.setPrevious(preRider.getPoint() - currentRider.getPoint());
            currentRider = repository.save(currentRider);
            preRider = currentRider;
        }
    }

    private void updateFields(Chart chart) {
        Sort sort = Sort.by("point").descending();
        List<Chart> sorted = repository.findAll(sort);
        chart.setLeader(compareWithLeader(sorted, chart.getPoint()));
        chart.setPrevious(compareWithPrevious(sorted, chart.getPoint()));
        repository.save(chart);
    }

    private Integer compareWithLeader(List<Chart> descending, int currentPoint) {
        if (descending.get(0).getPoint() == currentPoint) {  //if current point is max
            return null;
        }

        return descending.get(0).getPoint() - currentPoint;
    }

    private Integer compareWithPrevious(List<Chart> descending, int currentPoint) {
        for (int i = 0; i < descending.size() - 1; i++) {
            if (descending.get(0).getPoint() == currentPoint) {   //if current point is max
                return null;
            }

            if (descending.get(i).getPoint() <= currentPoint) {  // current point is middle
                return descending.get(i - 1).getPoint() - currentPoint;
            }
        }

        return descending.get(descending.size() - 1).getPoint() - currentPoint;  //current point is min
    }

    @GetMapping("/get")
    @CrossOrigin
    public ResponseEntity<List<Chart>> get() {
        Sort sort = Sort.by("point")
                .descending();
        List<Chart> list = repository.findAll(sort);
        return ResponseEntity.ok(list);
    }
}
