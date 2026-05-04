.class Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->setSelectionEnabled(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;Z)V
    .locals 0

    .line 267
    iput-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell$1;->this$1:Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

    iput-boolean p2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell$1;->val$enabled:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 281
    iget-boolean p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell$1;->val$enabled:Z

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 282
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell$1;->this$1:Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

    invoke-static {p1}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->-$$Nest$fgetcheckImageView(Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 284
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell$1;->this$1:Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

    invoke-static {p1}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->-$$Nest$fgetcheckBox(Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;)Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 270
    iget-boolean p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell$1;->val$enabled:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 271
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell$1;->this$1:Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

    invoke-static {p1}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->-$$Nest$fgetcheckBox(Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;)Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 272
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell$1;->this$1:Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

    invoke-static {p1}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->-$$Nest$fgetcheckBox(Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;)Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 274
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell$1;->this$1:Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

    invoke-static {p1}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->-$$Nest$fgetcheckImageView(Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 275
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell$1;->this$1:Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

    invoke-static {p1}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->-$$Nest$fgetcheckImageView(Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
