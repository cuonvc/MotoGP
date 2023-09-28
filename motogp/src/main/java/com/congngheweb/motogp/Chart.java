package com.congngheweb.motogp;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "chart")
@Data
@Builder(toBuilder = true)
@NoArgsConstructor
@AllArgsConstructor
public class Chart {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String rider;

    private String undefine;

    private Integer point;

    private Integer leader;

    private Integer previous;

    private Integer qat;

    private Integer ina;

    private Integer arg;

    private Integer ame;

    private Integer por;

    private Integer spa;

    private Integer fra;

    private Integer ita;

    private Integer cat;

    private Integer ger;

    private Integer ned;

    private Integer gbr;

    private Integer aut;

    private Integer rsm;

    private Integer ara;

    private Integer jpn;

    private Integer tha;

    private Integer aus;

    private Integer mal;

    private Integer val;
}
