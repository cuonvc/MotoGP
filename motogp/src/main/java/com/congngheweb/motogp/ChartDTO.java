package com.congngheweb.motogp;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder(toBuilder = true)
@NoArgsConstructor
@AllArgsConstructor
public class ChartDTO {

    private String rider;

    private String UNDEFINE;

    private Integer POINT;

    private Integer LEADER;

    private Integer PREVIOUS;

    private Integer QAT;

    private Integer INA;

    private Integer ARG;

    private Integer AME;

    private Integer POR;

    private Integer SPA;

    private Integer FRA;

    private Integer ITA;

    private Integer CAT;

    private Integer GER;

    private Integer NED;

    private Integer GBR;

    private Integer AUT;

    private Integer RSM;

    private Integer ARA;

    private Integer JPN;

    private Integer THA;

    private Integer AUS;

    private Integer MAL;

    private Integer VAL;
}
