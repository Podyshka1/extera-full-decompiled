package com.exteragram.messenger.inline.math;

import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\f\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0010\u0018\u00002\u00020\u0001BS\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\f\u001a\u00020\u0005\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\n\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0014R\u0011\u0010\u000b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0014R\u0011\u0010\f\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0014R\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Lcom/exteragram/messenger/inline/math/MathResult;", _UrlKt.FRAGMENT_ENCODE_SET, "value", _UrlKt.FRAGMENT_ENCODE_SET, "hasOperation", _UrlKt.FRAGMENT_ENCODE_SET, "decimalSeparator", _UrlKt.FRAGMENT_ENCODE_SET, "unit", "Lcom/exteragram/messenger/inline/math/MathUnit;", "russian", "breakdown", "grouping", "base", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(DZCLcom/exteragram/messenger/inline/math/MathUnit;ZZZI)V", "getValue", "()D", "getHasOperation", "()Z", "getDecimalSeparator", "()C", "getUnit", "()Lcom/exteragram/messenger/inline/math/MathUnit;", "getRussian", "getBreakdown", "getGrouping", "getBase", "()I", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class MathResult {
    private final int base;
    private final boolean breakdown;
    private final char decimalSeparator;
    private final boolean grouping;
    private final boolean hasOperation;
    private final boolean russian;
    private final MathUnit unit;
    private final double value;

    public MathResult(double d, boolean z, char c2, MathUnit mathUnit, boolean z2, boolean z3, boolean z4, int i) {
        this.value = d;
        this.hasOperation = z;
        this.decimalSeparator = c2;
        this.unit = mathUnit;
        this.russian = z2;
        this.breakdown = z3;
        this.grouping = z4;
        this.base = i;
    }

    public final double getValue() {
        return this.value;
    }

    public final boolean getHasOperation() {
        return this.hasOperation;
    }

    public final char getDecimalSeparator() {
        return this.decimalSeparator;
    }

    public final MathUnit getUnit() {
        return this.unit;
    }

    public final boolean getRussian() {
        return this.russian;
    }

    public final boolean getBreakdown() {
        return this.breakdown;
    }

    public final boolean getGrouping() {
        return this.grouping;
    }

    public final int getBase() {
        return this.base;
    }
}
