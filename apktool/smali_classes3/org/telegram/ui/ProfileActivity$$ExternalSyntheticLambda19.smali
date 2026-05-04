.class public final synthetic Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ProfileActivity;

.field public final synthetic f$1:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda19;->f$0:Lorg/telegram/ui/ProfileActivity;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda19;->f$1:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    return-void
.end method


# virtual methods
.method public final capture(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda19;->f$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda19;->f$1:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/ProfileActivity;->$r8$lambda$qbpNwbt0xEP0cWVg7ZWeEid-_a8(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    return-void
.end method

.method public synthetic captureCalculateHash(Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;Landroid/graphics/RectF;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture$-CC;->$default$captureCalculateHash(Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;Landroid/graphics/RectF;)V

    return-void
.end method
