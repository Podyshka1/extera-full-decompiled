.class public final synthetic Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/MessageSendPreview;

.field public final synthetic f$1:F

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/MessageSendPreview;FLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/MessageSendPreview;

    iput p2, p0, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda1;->f$1:F

    iput-object p3, p0, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/MessageSendPreview;

    iget v1, p0, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda1;->f$1:F

    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/MessageSendPreview;->$r8$lambda$bxPwF99mn3ydVK3qEPFfqw-e5zo(Lorg/telegram/ui/MessageSendPreview;FLandroid/view/View;Landroid/graphics/Bitmap;)V

    return-void
.end method
