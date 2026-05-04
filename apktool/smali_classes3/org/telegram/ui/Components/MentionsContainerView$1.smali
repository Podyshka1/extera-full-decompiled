.class Lorg/telegram/ui/Components/MentionsContainerView$1;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/MentionsContainerView;-><init>(Landroid/content/Context;JJLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/MentionsContainerView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/MentionsContainerView;Landroid/content/Context;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$1;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setReverseLayout(Z)V
    .locals 2

    .line 96
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$1;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    mul-int/2addr p1, v1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->setTranslationY(F)V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
