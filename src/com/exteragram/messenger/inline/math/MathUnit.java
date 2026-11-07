package com.exteragram.messenger.inline.math;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0013\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u0004\u0010\u000fJ\u0015\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0007¢\u0006\u0004\b\u0013\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0014\u001a\u0004\b\u0017\u0010\u0016R\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0017\u0010\t\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\t\u0010\u001b\u001a\u0004\b\u001e\u0010\u001dR\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\n\u0010\u0014\u001a\u0004\b\u001f\u0010\u0016¨\u0006 "}, d2 = {"Lcom/exteragram/messenger/inline/math/MathUnit;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "code", "label", "Lcom/exteragram/messenger/inline/math/UnitKind;", "kind", _UrlKt.FRAGMENT_ENCODE_SET, "scale", "offset", "russianLabel", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/inline/math/UnitKind;DDLjava/lang/String;)V", _UrlKt.FRAGMENT_ENCODE_SET, "russian", "(Z)Ljava/lang/String;", "value", "toBase", "(D)D", "fromBase", "Ljava/lang/String;", "getCode", "()Ljava/lang/String;", "getLabel", "Lcom/exteragram/messenger/inline/math/UnitKind;", "getKind", "()Lcom/exteragram/messenger/inline/math/UnitKind;", "D", "getScale", "()D", "getOffset", "getRussianLabel", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class MathUnit {
    private final String code;
    private final UnitKind kind;
    private final String label;
    private final double offset;
    private final String russianLabel;
    private final double scale;

    public MathUnit(String str, String str2, UnitKind unitKind, double d, double d2, String str3) {
        this.code = str;
        this.label = str2;
        this.kind = unitKind;
        this.scale = d;
        this.offset = d2;
        this.russianLabel = str3;
    }

    public final String getCode() {
        return this.code;
    }

    public /* synthetic */ MathUnit(String str, String str2, UnitKind unitKind, double d, double d2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? UnitKind.CURRENCY : unitKind, (i & 8) != 0 ? 1.0d : d, (i & 16) != 0 ? 0.0d : d2, (i & 32) != 0 ? str2 : str3);
    }

    public final UnitKind getKind() {
        return this.kind;
    }

    public final double getScale() {
        return this.scale;
    }

    public final String label(boolean russian) {
        return russian ? this.russianLabel : this.label;
    }

    public final double toBase(double value) {
        return (value * this.scale) + this.offset;
    }

    public final double fromBase(double value) {
        return (value - this.offset) / this.scale;
    }
}
