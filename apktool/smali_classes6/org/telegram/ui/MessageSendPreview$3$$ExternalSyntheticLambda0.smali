.class public final synthetic Lorg/telegram/ui/MessageSendPreview$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback0Return;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/MessageSendPreview$3;

.field public final synthetic f$1:Landroid/graphics/Canvas;

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/MessageSendPreview$3;Landroid/graphics/Canvas;F)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview$3$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/MessageSendPreview$3;

    iput-object p2, p0, Lorg/telegram/ui/MessageSendPreview$3$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Canvas;

    iput p3, p0, Lorg/telegram/ui/MessageSendPreview$3$$ExternalSyntheticLambda0;->f$2:F

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview$3$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/MessageSendPreview$3;

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview$3$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Canvas;

    iget v2, p0, Lorg/telegram/ui/MessageSendPreview$3$$ExternalSyntheticLambda0;->f$2:F

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/MessageSendPreview$3;->$r8$lambda$desRCj69fA14s0_rkP3OkQ-C62I(Lorg/telegram/ui/MessageSendPreview$3;Landroid/graphics/Canvas;F)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
