package kotlin.contracts;

import kotlin.Function;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.ContractsDsl;
import okhttp3.internal.url._UrlKt;
import okio.ByteString$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
@SinceKotlin(version = "1.3")
@ContractsDsl
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\n\u0010\u0002\u001a\u00020\u0003H§\u0080\u0004J\u0014\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001H§\u0080\u0004J\n\u0010\u0005\u001a\u00020\u0006H§\u0080\u0004J(\u0010\u0007\u001a\u00020\b\"\u0004\b\u0000\u0010\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\t0\u000b2\b\b\u0002\u0010\f\u001a\u00020\rH§\u0080\u0004J\u0016\u0010\u000e\u001a\u00020\u000f*\u00020\u00102\u0006\u0010\u0004\u001a\u00020\u0006H§\u0084\u0004J\"\u0010\u0011\u001a\u00020\u0012\"\u0004\b\u0000\u0010\t*\u00020\u00102\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\t0\u000bH§\u0084\u0004¨\u0006\u0013"}, d2 = {"Lkotlin/contracts/ContractBuilder;", _UrlKt.FRAGMENT_ENCODE_SET, "returns", "Lkotlin/contracts/Returns;", "value", "returnsNotNull", "Lkotlin/contracts/ReturnsNotNull;", "callsInPlace", "Lkotlin/contracts/CallsInPlace;", "R", "lambda", "Lkotlin/Function;", "kind", "Lkotlin/contracts/InvocationKind;", "implies", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "holdsIn", "Lkotlin/contracts/HoldsIn;", "kotlin-stdlib"}, m910k = 1, mv = {2, 3, 0}, xi = 48)
@ExperimentalContracts
public interface ContractBuilder {
    @ContractsDsl
    <R> CallsInPlace callsInPlace(Function<? extends R> lambda, InvocationKind kind);

    @ExperimentalExtendedContracts
    @ContractsDsl
    <R> HoldsIn holdsIn(boolean z, Function<? extends R> function);

    @ExperimentalExtendedContracts
    @ContractsDsl
    void implies(boolean z, ReturnsNotNull returnsNotNull);

    @ContractsDsl
    Returns returns();

    @ContractsDsl
    Returns returns(Object value);

    @ContractsDsl
    ReturnsNotNull returnsNotNull();

    @Metadata(m910k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class DefaultImpls {
        public static /* synthetic */ CallsInPlace callsInPlace$default(ContractBuilder contractBuilder, Function function, InvocationKind invocationKind, int i, Object obj) {
            if (obj != null) {
                ByteString$$ExternalSyntheticBUOutline0.m968m("Super calls with default arguments not supported in this target, function: callsInPlace");
                return null;
            }
            if ((i & 2) != 0) {
                invocationKind = InvocationKind.UNKNOWN;
            }
            return contractBuilder.callsInPlace(function, invocationKind);
        }
    }
}
