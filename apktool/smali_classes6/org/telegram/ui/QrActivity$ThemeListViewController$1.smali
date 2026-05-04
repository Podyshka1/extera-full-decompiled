.class Lorg/telegram/ui/QrActivity$ThemeListViewController$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/QrActivity$ThemeListViewController;-><init>(Lorg/telegram/ui/QrActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

.field final synthetic val$this$0:Lorg/telegram/ui/QrActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/QrActivity$ThemeListViewController;Landroid/content/Context;Lorg/telegram/ui/QrActivity;)V
    .locals 0

    .line 1388
    iput-object p1, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$1;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    iput-object p3, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$1;->val$this$0:Lorg/telegram/ui/QrActivity;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateTimeForScrolling(I)I
    .locals 0

    .line 1391
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x6

    return p1
.end method
