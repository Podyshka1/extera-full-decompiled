package com.yandex.runtime.config;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ExperimentData implements Serializable {
    private int testId;
    private int userBucket;
    private int userGroup;

    public ExperimentData(int i, int i2, int i3) {
        this.testId = i;
        this.userGroup = i2;
        this.userBucket = i3;
    }

    public ExperimentData() {
    }

    public int getTestId() {
        return this.testId;
    }

    public int getUserGroup() {
        return this.userGroup;
    }

    public int getUserBucket() {
        return this.userBucket;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.testId = archive.add(this.testId);
        this.userGroup = archive.add(this.userGroup);
        this.userBucket = archive.add(this.userBucket);
    }
}
