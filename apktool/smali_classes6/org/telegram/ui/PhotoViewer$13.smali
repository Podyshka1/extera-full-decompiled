.class Lorg/telegram/ui/PhotoViewer$13;
.super Landroid/util/Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 3451
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;)Ljava/lang/Float;
    .locals 0

    .line 3459
    invoke-virtual {p1}, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->getProgress()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3451
    check-cast p1, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/PhotoViewer$13;->get(Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 3451
    check-cast p1, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/PhotoViewer$13;->set(Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;Ljava/lang/Float;)V

    return-void
.end method

.method public set(Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;Ljava/lang/Float;)V
    .locals 0

    .line 3454
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->setProgress(F)V

    return-void
.end method
