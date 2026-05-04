package kotlin.text;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes.dex */
public interface MatchResult {
    Destructured getDestructured();

    List getGroupValues();

    MatchGroupCollection getGroups();

    IntRange getRange();

    String getValue();

    MatchResult next();

    /* JADX INFO: loaded from: classes5.dex */
    public static final class DefaultImpls {
        public static Destructured getDestructured(MatchResult matchResult) {
            return new Destructured(matchResult);
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class Destructured {
        private final MatchResult match;

        public Destructured(MatchResult match) {
            Intrinsics.checkNotNullParameter(match, "match");
            this.match = match;
        }

        public final MatchResult getMatch() {
            return this.match;
        }
    }
}
