.class Lorg/telegram/ui/NotificationsCustomSettingsActivity$4;
.super Landroidx/recyclerview/widget/DefaultItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/NotificationsCustomSettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)V
    .locals 0

    .line 1000
    iput-object p1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$4;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method protected onMoveAnimationUpdate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1003
    iget-object p1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$4;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
