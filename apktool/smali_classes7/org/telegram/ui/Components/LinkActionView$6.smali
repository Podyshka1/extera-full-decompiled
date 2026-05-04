.class Lorg/telegram/ui/Components/LinkActionView$6;
.super Lorg/telegram/ui/Components/QRCodeBottomSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/LinkActionView;->showQrCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/LinkActionView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/LinkActionView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 394
    iput-object p1, p0, Lorg/telegram/ui/Components/LinkActionView$6;->this$0:Lorg/telegram/ui/Components/LinkActionView;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/telegram/ui/Components/QRCodeBottomSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 397
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 398
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView$6;->this$0:Lorg/telegram/ui/Components/LinkActionView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LinkActionView;->-$$Nest$fputqrCodeBottomSheet(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/ui/Components/QRCodeBottomSheet;)V

    return-void
.end method
