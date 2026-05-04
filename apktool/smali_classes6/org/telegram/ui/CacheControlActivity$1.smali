.class Lorg/telegram/ui/CacheControlActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CacheControlActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CacheControlActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    .line 1206
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 1210
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/CacheControlActivity;->access$000(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1211
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    iget-object p1, p1, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    if-eqz p1, :cond_0

    .line 1212
    invoke-virtual {p1}, Lorg/telegram/ui/Storage/CacheModel;->clearSelection()V

    .line 1214
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/CacheControlActivity;->-$$Nest$fgetcachedMediaLayout(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CachedMediaLayout;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1215
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/CacheControlActivity;->-$$Nest$fgetcachedMediaLayout(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CachedMediaLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/CachedMediaLayout;->showActionMode(Z)V

    .line 1216
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/CacheControlActivity;->-$$Nest$fgetcachedMediaLayout(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CachedMediaLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/CachedMediaLayout;->updateVisibleRows()V

    return-void

    .line 1220
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 1222
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/CacheControlActivity;->-$$Nest$mclearSelectedFiles(Lorg/telegram/ui/CacheControlActivity;)V

    return-void

    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    .line 1224
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/CacheControlActivity;->-$$Nest$mclearDatabase(Lorg/telegram/ui/CacheControlActivity;Z)V

    return-void

    :cond_4
    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    .line 1226
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/CacheControlActivity;->-$$Nest$mclearDatabase(Lorg/telegram/ui/CacheControlActivity;Z)V

    :cond_5
    return-void
.end method
