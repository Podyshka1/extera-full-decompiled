.class Lorg/telegram/ui/TooManyCommunitiesActivity$3$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TooManyCommunitiesActivity$3;->onTextChanged(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/TooManyCommunitiesActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TooManyCommunitiesActivity$3;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$3$2;->this$1:Lorg/telegram/ui/TooManyCommunitiesActivity$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 178
    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$3$2;->this$1:Lorg/telegram/ui/TooManyCommunitiesActivity$3;

    iget-object p1, p1, Lorg/telegram/ui/TooManyCommunitiesActivity$3;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-static {p1}, Lorg/telegram/ui/TooManyCommunitiesActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/TooManyCommunitiesActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    return-void
.end method
