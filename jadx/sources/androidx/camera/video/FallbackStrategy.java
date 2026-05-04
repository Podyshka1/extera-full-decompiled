package androidx.camera.video;

/* JADX INFO: loaded from: classes4.dex */
public abstract class FallbackStrategy {
    static final FallbackStrategy NONE = new AutoValue_FallbackStrategy_RuleStrategy(Quality.NONE, 0);

    private FallbackStrategy() {
    }

    public static FallbackStrategy higherQualityOrLowerThan(Quality quality) {
        return new AutoValue_FallbackStrategy_RuleStrategy(quality, 1);
    }

    static abstract class RuleStrategy extends FallbackStrategy {
        abstract Quality getFallbackQuality();

        abstract int getFallbackRule();

        RuleStrategy() {
            super();
        }
    }
}
