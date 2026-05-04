.class public Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final accessibilityDescriptors:Ljava/util/List;

.field public final essentialProperties:Ljava/util/List;

.field public final id:I

.field public final representations:Ljava/util/List;

.field public final supplementalProperties:Ljava/util/List;

.field public final type:I


# direct methods
.method public constructor <init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->id:I

    .line 66
    iput p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    .line 67
    invoke-static {p3}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 68
    invoke-static {p4}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->accessibilityDescriptors:Ljava/util/List;

    .line 69
    invoke-static {p5}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->essentialProperties:Ljava/util/List;

    .line 70
    invoke-static {p6}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->supplementalProperties:Ljava/util/List;

    return-void
.end method
