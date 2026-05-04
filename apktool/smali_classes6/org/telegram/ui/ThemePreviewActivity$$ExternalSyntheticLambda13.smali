.class public final synthetic Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ThemePreviewActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/ui/ThemePreviewActivity;

    return-void
.end method


# virtual methods
.method public final didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0, p1, p2, p3, p4}, Lorg/telegram/ui/ThemePreviewActivity;->$r8$lambda$ODDu1PTfy_r-BhBdxRUxKgunw8w(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    return-void
.end method

.method public synthetic didSetImageBitmap(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate$-CC;->$default$didSetImageBitmap(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public synthetic onAnimationReady(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate$-CC;->$default$onAnimationReady(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;Lorg/telegram/messenger/ImageReceiver;)V

    return-void
.end method
