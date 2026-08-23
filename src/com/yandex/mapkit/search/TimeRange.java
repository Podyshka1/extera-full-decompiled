package com.yandex.mapkit.search;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class TimeRange implements Serializable {
    private Integer from;
    private Boolean isTwentyFourHours;
    private Integer to;

    public TimeRange(Boolean bool, Integer num, Integer num2) {
        this.isTwentyFourHours = bool;
        this.from = num;
        this.to = num2;
    }

    public TimeRange() {
    }

    public Boolean getIsTwentyFourHours() {
        return this.isTwentyFourHours;
    }

    public Integer getFrom() {
        return this.from;
    }

    public Integer getTo() {
        return this.to;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.isTwentyFourHours = archive.add(this.isTwentyFourHours, true);
        this.from = archive.add(this.from, true);
        this.to = archive.add(this.to, true);
    }
}
