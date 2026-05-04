.class Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector_28;
.super Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrecomputedTextDetector_28"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector;-><init>()V

    return-void
.end method


# virtual methods
.method isPrecomputedText(Ljava/lang/CharSequence;)Z
    .locals 0

    .line 177
    invoke-static {p1}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector_28$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
