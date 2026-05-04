.class public final synthetic Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    return-void
.end method


# virtual methods
.method public final capture(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->$r8$lambda$Qv24UzWerFw39nanji_8zwL1yR4(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    return-void
.end method

.method public synthetic captureCalculateHash(Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;Landroid/graphics/RectF;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture$-CC;->$default$captureCalculateHash(Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;Landroid/graphics/RectF;)V

    return-void
.end method
