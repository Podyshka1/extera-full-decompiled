package kotlin.text;

import com.exteragram.messenger.plugins.PluginsConstants;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.ResultKt;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequenceScope;
import kotlin.sequences.SequencesKt;
import okhttp3.internal.http.HttpStatusCodesKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 52\u00060\u0001j\u0002`\u0002:\u000245B\u0011\bA\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006B\u0011\bV\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\u0005\u0010\tB\u0019\bV\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\u0005\u0010\fB\u001f\bV\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000e¢\u0006\u0004\b\u0005\u0010\u000fJ\u0012\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0086\u0084\u0004J\u0012\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0086\u0080\u0004J\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010\u001c\u001a\u00020\u001dH\u0086\u0080\u0004J\"\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001f2\u0006\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010\u001c\u001a\u00020\u001dH\u0086\u0080\u0004J\u0014\u0010 \u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0017\u001a\u00020\u0018H\u0086\u0080\u0004J\u001c\u0010!\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020\u001dH\u0087\u0080\u0004J\u001a\u0010#\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020\u001dH\u0087\u0080\u0004J\u001a\u0010$\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\bH\u0086\u0080\u0004J&\u0010$\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u00182\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00180'H\u0086\u0080\u0004J\u001a\u0010(\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\bH\u0086\u0080\u0004J\"\u0010)\u001a\b\u0012\u0004\u0012\u00020\b0*2\u0006\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010+\u001a\u00020\u001dH\u0086\u0080\u0004J\"\u0010,\u001a\b\u0012\u0004\u0012\u00020\b0\u001f2\u0006\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010+\u001a\u00020\u001dH\u0087\u0080\u0004J\n\u0010-\u001a\u00020\bH\u0096\u0080\u0004J\n\u0010.\u001a\u00020\u0004H\u0086\u0080\u0004J\n\u0010/\u001a\u000200H\u0082\u0080\u0004J\u0012\u00101\u001a\u0002022\u0006\u0010\u0017\u001a\u000203H\u0082\u0080\u0004R\u000f\u0010\u0003\u001a\u00020\u0004X\u0082\u0084\b¢\u0006\u0002\n\u0000R\u0015\u0010\u0007\u001a\u00020\b8FX\u0086\u0084\b¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u000eX\u0082\u008e\b¢\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000e8FX\u0086\u0084\b¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014¨\u00066"}, d2 = {"Lkotlin/text/Regex;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "nativePattern", "Ljava/util/regex/Pattern;", "<init>", "(Ljava/util/regex/Pattern;)V", "pattern", _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/lang/String;)V", "option", "Lkotlin/text/RegexOption;", "(Ljava/lang/String;Lkotlin/text/RegexOption;)V", "options", _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/lang/String;Ljava/util/Set;)V", "getPattern", "()Ljava/lang/String;", "_options", "getOptions", "()Ljava/util/Set;", "matches", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.Settings.TYPE_INPUT, _UrlKt.FRAGMENT_ENCODE_SET, "containsMatchIn", "find", "Lkotlin/text/MatchResult;", "startIndex", _UrlKt.FRAGMENT_ENCODE_SET, "findAll", "Lkotlin/sequences/Sequence;", "matchEntire", "matchAt", "index", "matchesAt", "replace", "replacement", "transform", "Lkotlin/Function1;", "replaceFirst", "split", _UrlKt.FRAGMENT_ENCODE_SET, "limit", "splitToSequence", "toString", "toPattern", "writeReplace", _UrlKt.FRAGMENT_ENCODE_SET, "readObject", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/io/ObjectInputStream;", "Serialized", "Companion", "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRegex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Regex.kt\nkotlin/text/Regex\n+ 2 Regex.kt\nkotlin/text/RegexKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,420:1\n24#2,3:421\n1#3:424\n*S KotlinDebug\n*F\n+ 1 Regex.kt\nkotlin/text/Regex\n*L\n105#1:421,3\n*E\n"})
public final class Regex implements Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private Set<? extends RegexOption> _options;
    private final Pattern nativePattern;

    @PublishedApi
    public Regex(Pattern pattern) {
        this.nativePattern = pattern;
    }

    public Regex(String str) {
        this(Pattern.compile(str));
    }

    public Regex(String str, RegexOption regexOption) {
        this(Pattern.compile(str, INSTANCE.ensureUnicodeCase(regexOption.getValue())));
    }

    public Regex(String str, Set<? extends RegexOption> set) {
        this(Pattern.compile(str, INSTANCE.ensureUnicodeCase(RegexKt.toInt(set))));
    }

    public final String getPattern() {
        return this.nativePattern.pattern();
    }

    public final Set<RegexOption> getOptions() {
        Set set = this._options;
        if (set != null) {
            return set;
        }
        final int iFlags = this.nativePattern.flags();
        EnumSet enumSetAllOf = EnumSet.allOf(RegexOption.class);
        CollectionsKt.retainAll(enumSetAllOf, new Function1<RegexOption, Boolean>() { // from class: kotlin.text.Regex$special$$inlined$fromInt$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(RegexOption regexOption) {
                RegexOption regexOption2 = regexOption;
                return Boolean.valueOf((iFlags & regexOption2.getMask()) == regexOption2.getValue());
            }
        });
        Set<RegexOption> setUnmodifiableSet = Collections.unmodifiableSet(enumSetAllOf);
        this._options = setUnmodifiableSet;
        return setUnmodifiableSet;
    }

    public final boolean matches(CharSequence input) {
        return this.nativePattern.matcher(input).matches();
    }

    public final boolean containsMatchIn(CharSequence input) {
        return this.nativePattern.matcher(input).find();
    }

    public static /* synthetic */ MatchResult find$default(Regex regex, CharSequence charSequence, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return regex.find(charSequence, i);
    }

    public final MatchResult find(CharSequence input, int startIndex) {
        return RegexKt.findNext(this.nativePattern.matcher(input), startIndex, input);
    }

    public static /* synthetic */ Sequence findAll$default(Regex regex, CharSequence charSequence, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return regex.findAll(charSequence, i);
    }

    public final Sequence<MatchResult> findAll(final CharSequence input, final int startIndex) {
        if (startIndex < 0 || startIndex > input.length()) {
            Regex$$ExternalSyntheticBUOutline0.m889m("Start index out of bounds: ", startIndex, ", input length: ", input.length());
            return null;
        }
        return SequencesKt.generateSequence(new Function0() { // from class: kotlin.text.Regex$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f$0.find(input, startIndex);
            }
        }, (Function1) C23662.INSTANCE);
    }

    /* JADX INFO: renamed from: kotlin.text.Regex$findAll$2 */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m862k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class C23662 extends FunctionReferenceImpl implements Function1<MatchResult, MatchResult> {
        public static final C23662 INSTANCE = new C23662();

        public C23662() {
            super(1, MatchResult.class, "next", "next()Lkotlin/text/MatchResult;", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public final MatchResult invoke(MatchResult matchResult) {
            return matchResult.next();
        }
    }

    public final MatchResult matchEntire(CharSequence input) {
        return RegexKt.matchEntire(this.nativePattern.matcher(input), input);
    }

    @SinceKotlin(version = "1.7")
    public final MatchResult matchAt(CharSequence input, int index) {
        Matcher matcherRegion = this.nativePattern.matcher(input).useAnchoringBounds(false).useTransparentBounds(true).region(index, input.length());
        if (matcherRegion.lookingAt()) {
            return new MatcherMatchResult(matcherRegion, input);
        }
        return null;
    }

    @SinceKotlin(version = "1.7")
    public final boolean matchesAt(CharSequence input, int index) {
        return this.nativePattern.matcher(input).useAnchoringBounds(false).useTransparentBounds(true).region(index, input.length()).lookingAt();
    }

    public final String replace(CharSequence input, String replacement) {
        return this.nativePattern.matcher(input).replaceAll(replacement);
    }

    public final String replace(CharSequence input, Function1<? super MatchResult, ? extends CharSequence> transform) {
        int iIntValue = 0;
        MatchResult matchResultFind$default = find$default(this, input, 0, 2, null);
        if (matchResultFind$default == null) {
            return input.toString();
        }
        int length = input.length();
        StringBuilder sb = new StringBuilder(length);
        do {
            sb.append(input, iIntValue, matchResultFind$default.getRange().getStart().intValue());
            sb.append(transform.invoke(matchResultFind$default));
            iIntValue = matchResultFind$default.getRange().getEndInclusive().intValue() + 1;
            matchResultFind$default = matchResultFind$default.next();
            if (iIntValue >= length) {
                break;
            }
        } while (matchResultFind$default != null);
        if (iIntValue < length) {
            sb.append(input, iIntValue, length);
        }
        return sb.toString();
    }

    public final String replaceFirst(CharSequence input, String replacement) {
        return this.nativePattern.matcher(input).replaceFirst(replacement);
    }

    public static /* synthetic */ List split$default(Regex regex, CharSequence charSequence, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return regex.split(charSequence, i);
    }

    public final List<String> split(CharSequence input, int limit) {
        StringsKt__StringsKt.requireNonNegativeLimit(limit);
        Matcher matcher = this.nativePattern.matcher(input);
        if (limit == 1 || !matcher.find()) {
            return CollectionsKt.listOf(input.toString());
        }
        ArrayList arrayList = new ArrayList(limit > 0 ? RangesKt.coerceAtMost(limit, 10) : 10);
        int i = limit - 1;
        int iEnd = 0;
        do {
            arrayList.add(input.subSequence(iEnd, matcher.start()).toString());
            iEnd = matcher.end();
            if (i >= 0 && arrayList.size() == i) {
                break;
            }
        } while (matcher.find());
        arrayList.add(input.subSequence(iEnd, input.length()).toString());
        return arrayList;
    }

    public static /* synthetic */ Sequence splitToSequence$default(Regex regex, CharSequence charSequence, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return regex.splitToSequence(charSequence, i);
    }

    @SinceKotlin(version = "1.6")
    public final Sequence<String> splitToSequence(CharSequence input, int limit) {
        StringsKt__StringsKt.requireNonNegativeLimit(limit);
        return SequencesKt.sequence(new C23671(input, limit, null));
    }

    /* JADX INFO: renamed from: kotlin.text.Regex$splitToSequence$1 */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/sequences/SequenceScope;", _UrlKt.FRAGMENT_ENCODE_SET}, m862k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(m872c = "kotlin.text.Regex$splitToSequence$1", m873f = "Regex.kt", m874i = {0, 0, 1, 1, 1, 1, 2, 2, 2, 2}, m875l = {296, 304, HttpStatusCodesKt.HTTP_PERM_REDIRECT}, m876m = "invokeSuspend", m877n = {"$this$sequence", "matcher", "$this$sequence", "matcher", "nextStart", "splitCount", "$this$sequence", "matcher", "nextStart", "splitCount"}, nl = {297, 305, 309}, m878s = {"L$0", "L$1", "L$0", "L$1", "I$0", "I$1", "L$0", "L$1", "I$0", "I$1"}, m879v = 2)
    public static final class C23671 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super String>, Continuation<? super Unit>, Object> {
        final /* synthetic */ CharSequence $input;
        final /* synthetic */ int $limit;
        int I$0;
        int I$1;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C23671(CharSequence charSequence, int i, Continuation<? super C23671> continuation) {
            super(2, continuation);
            this.$input = charSequence;
            this.$limit = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C23671 c23671 = Regex.this.new C23671(this.$input, this.$limit, continuation);
            c23671.L$0 = obj;
            return c23671;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SequenceScope<? super String> sequenceScope, Continuation<? super Unit> continuation) {
            return ((C23671) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:29:0x00ae, code lost:
        
            if (r0.yield(r4, r10) != r1) goto L31;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x00cc, code lost:
        
            if (r0.yield(r2, r10) == r1) goto L35;
         */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0074  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0074 -> B:22:0x0075). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            int i;
            Matcher matcher;
            int i2;
            String string;
            SequenceScope sequenceScope = (SequenceScope) this.L$0;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i3 = this.label;
            if (i3 == 0) {
                ResultKt.throwOnFailure(obj);
                Matcher matcher2 = Regex.this.nativePattern.matcher(this.$input);
                if (this.$limit == 1 || !matcher2.find()) {
                    String string2 = this.$input.toString();
                    this.L$0 = SpillingKt.nullOutSpilledVariable(sequenceScope);
                    this.L$1 = SpillingKt.nullOutSpilledVariable(matcher2);
                    this.label = 1;
                } else {
                    i = 0;
                    matcher = matcher2;
                    i2 = 0;
                    string = this.$input.subSequence(i, matcher.start()).toString();
                    this.L$0 = sequenceScope;
                    this.L$1 = matcher;
                    this.I$0 = i;
                    this.I$1 = i2;
                    this.label = 2;
                    if (sequenceScope.yield(string, this) != coroutine_suspended) {
                    }
                    return coroutine_suspended;
                }
            } else if (i3 == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                if (i3 != 2) {
                    if (i3 != 3) {
                        Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                }
                int i4 = this.I$1;
                matcher = (Matcher) this.L$1;
                ResultKt.throwOnFailure(obj);
                int iEnd = matcher.end();
                int i5 = i4 + 1;
                if (i5 == this.$limit - 1 && matcher.find()) {
                    i = iEnd;
                    i2 = i5;
                    string = this.$input.subSequence(i, matcher.start()).toString();
                    this.L$0 = sequenceScope;
                    this.L$1 = matcher;
                    this.I$0 = i;
                    this.I$1 = i2;
                    this.label = 2;
                    if (sequenceScope.yield(string, this) != coroutine_suspended) {
                        i4 = i2;
                        int iEnd2 = matcher.end();
                        int i52 = i4 + 1;
                        if (i52 == this.$limit - 1) {
                        }
                        CharSequence charSequence = this.$input;
                        String string3 = charSequence.subSequence(iEnd2, charSequence.length()).toString();
                        this.L$0 = SpillingKt.nullOutSpilledVariable(sequenceScope);
                        this.L$1 = SpillingKt.nullOutSpilledVariable(matcher);
                        this.I$0 = iEnd2;
                        this.I$1 = i52;
                        this.label = 3;
                    }
                    return coroutine_suspended;
                }
                CharSequence charSequence2 = this.$input;
                String string32 = charSequence2.subSequence(iEnd2, charSequence2.length()).toString();
                this.L$0 = SpillingKt.nullOutSpilledVariable(sequenceScope);
                this.L$1 = SpillingKt.nullOutSpilledVariable(matcher);
                this.I$0 = iEnd2;
                this.I$1 = i52;
                this.label = 3;
            }
            return Unit.INSTANCE;
        }
    }

    public String toString() {
        return this.nativePattern.toString();
    }

    /* JADX INFO: renamed from: toPattern, reason: from getter */
    public final Pattern getNativePattern() {
        return this.nativePattern;
    }

    private final Object writeReplace() {
        return new Serialized(this.nativePattern.pattern(), this.nativePattern.flags());
    }

    private final void readObject(ObjectInputStream input) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0002\u0018\u0000 \u000f2\u00060\u0001j\u0002`\u0002:\u0001\u000fB\u0019\bF\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\n\u0010\r\u001a\u00020\u000eH\u0082\u0080\u0004R\u0015\u0010\u0003\u001a\u00020\u0004X\u0086\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0015\u0010\u0005\u001a\u00020\u0006X\u0086\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Lkotlin/text/Regex$Serialized;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "pattern", _UrlKt.FRAGMENT_ENCODE_SET, "flags", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "getPattern", "()Ljava/lang/String;", "getFlags", "()I", "readResolve", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Serialized implements Serializable {
        private static final long serialVersionUID = 0;
        private final int flags;
        private final String pattern;

        public Serialized(String str, int i) {
            this.pattern = str;
            this.flags = i;
        }

        public final int getFlags() {
            return this.flags;
        }

        public final String getPattern() {
            return this.pattern;
        }

        private final Object readResolve() {
            return new Regex(Pattern.compile(this.pattern, this.flags));
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\bB¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0086\u0080\u0004J\u0012\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007H\u0086\u0080\u0004J\u0012\u0010\t\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007H\u0086\u0080\u0004J\u0012\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0082\u0080\u0004¨\u0006\r"}, d2 = {"Lkotlin/text/Regex$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "fromLiteral", "Lkotlin/text/Regex;", "literal", _UrlKt.FRAGMENT_ENCODE_SET, "escape", "escapeReplacement", "ensureUnicodeCase", _UrlKt.FRAGMENT_ENCODE_SET, "flags", "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int ensureUnicodeCase(int flags) {
            return (flags & 2) != 0 ? flags | 64 : flags;
        }

        private Companion() {
        }

        public final Regex fromLiteral(String literal) {
            return new Regex(literal, RegexOption.LITERAL);
        }

        public final String escape(String literal) {
            return Pattern.quote(literal);
        }

        public final String escapeReplacement(String literal) {
            return Matcher.quoteReplacement(literal);
        }
    }
}
