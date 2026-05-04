.class Lorg/telegram/ui/ProfileActivity$ListAdapter$12;
.super Landroid/text/style/URLSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14464
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$12;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iput-object p3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$12;->val$url:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 14467
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$12;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$12;->val$url:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const/4 v0, 0x1

    .line 14472
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    return-void
.end method
