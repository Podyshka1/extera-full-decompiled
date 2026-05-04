.class Lorg/telegram/ui/LanguageSelectActivity$3;
.super Landroidx/recyclerview/widget/DefaultItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LanguageSelectActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LanguageSelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LanguageSelectActivity;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$3;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method protected onMoveAnimationUpdate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 199
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$3;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 200
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$3;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->updateSelector()V

    return-void
.end method
