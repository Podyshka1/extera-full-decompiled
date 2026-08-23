package com.exteragram.messenger.export.api;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class ApiWrap$GiveawayStart {
    public String additionalPrize;
    public boolean all;
    public long credits;
    public int months;
    public int quantity;
    public int untilDate;
    public ArrayList countries = new ArrayList();
    public ArrayList channels = new ArrayList();

    public ApiWrap$GiveawayStart(int i, long j, int i2, int i3, boolean z) {
        this.untilDate = i;
        this.credits = j;
        this.quantity = i2;
        this.months = i3;
        this.all = z;
    }
}
