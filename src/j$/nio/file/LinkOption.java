package j$.nio.file;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class LinkOption implements OpenOption, CopyOption {
    public static final LinkOption NOFOLLOW_LINKS;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ LinkOption[] f492a;

    static {
        LinkOption linkOption = new LinkOption("NOFOLLOW_LINKS", 0);
        NOFOLLOW_LINKS = linkOption;
        f492a = new LinkOption[]{linkOption};
    }

    public static LinkOption valueOf(String str) {
        return (LinkOption) Enum.valueOf(LinkOption.class, str);
    }

    public static LinkOption[] values() {
        return (LinkOption[]) f492a.clone();
    }
}
