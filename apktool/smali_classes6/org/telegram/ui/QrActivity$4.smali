.class Lorg/telegram/ui/QrActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/QrActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/QrActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/QrActivity;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lorg/telegram/ui/QrActivity$4;->this$0:Lorg/telegram/ui/QrActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 411
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/QrActivity$4;->onComplete(Ljava/util/List;)V

    return-void
.end method

.method public onComplete(Ljava/util/List;)V
    .locals 1

    .line 414
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$4;->this$0:Lorg/telegram/ui/QrActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/QrActivity;->-$$Nest$monDataLoaded(Lorg/telegram/ui/QrActivity;Ljava/util/List;)V

    .line 415
    invoke-static {p1}, Lorg/telegram/ui/QrActivity;->-$$Nest$sfputcachedThemes(Ljava/util/List;)V

    return-void
.end method

.method public onError(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 419
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$4;->this$0:Lorg/telegram/ui/QrActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
