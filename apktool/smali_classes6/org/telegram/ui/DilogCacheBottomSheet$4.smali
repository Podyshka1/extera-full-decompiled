.class Lorg/telegram/ui/DilogCacheBottomSheet$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/CachedMediaLayout$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DilogCacheBottomSheet;-><init>(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;Lorg/telegram/ui/Storage/CacheModel;Lorg/telegram/ui/DilogCacheBottomSheet$Delegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DilogCacheBottomSheet;

.field final synthetic val$cacheModel:Lorg/telegram/ui/Storage/CacheModel;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DilogCacheBottomSheet;Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lorg/telegram/ui/DilogCacheBottomSheet$4;->this$0:Lorg/telegram/ui/DilogCacheBottomSheet;

    iput-object p2, p0, Lorg/telegram/ui/DilogCacheBottomSheet$4;->val$cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public clearSelection()V
    .locals 0

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/telegram/ui/DilogCacheBottomSheet$4;->this$0:Lorg/telegram/ui/DilogCacheBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public onItemSelected(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;Lorg/telegram/ui/Storage/CacheModel$FileInfo;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 229
    iget-object p1, p0, Lorg/telegram/ui/DilogCacheBottomSheet$4;->val$cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Storage/CacheModel;->toggleSelect(Lorg/telegram/ui/Storage/CacheModel$FileInfo;)V

    .line 230
    iget-object p1, p0, Lorg/telegram/ui/DilogCacheBottomSheet$4;->this$0:Lorg/telegram/ui/DilogCacheBottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/DilogCacheBottomSheet;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/CachedMediaLayout;->updateVisibleRows()V

    .line 231
    iget-object p1, p0, Lorg/telegram/ui/DilogCacheBottomSheet$4;->this$0:Lorg/telegram/ui/DilogCacheBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/DilogCacheBottomSheet;->-$$Nest$msyncCheckBoxes(Lorg/telegram/ui/DilogCacheBottomSheet;)V

    .line 232
    iget-object p1, p0, Lorg/telegram/ui/DilogCacheBottomSheet$4;->this$0:Lorg/telegram/ui/DilogCacheBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/DilogCacheBottomSheet;->-$$Nest$fgetcircleDiagramView(Lorg/telegram/ui/DilogCacheBottomSheet;)Lorg/telegram/ui/Components/StorageDiagramView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StorageDiagramView;->updateDescription()J

    move-result-wide p1

    .line 233
    iget-object p3, p0, Lorg/telegram/ui/DilogCacheBottomSheet$4;->this$0:Lorg/telegram/ui/DilogCacheBottomSheet;

    invoke-static {p3}, Lorg/telegram/ui/DilogCacheBottomSheet;->-$$Nest$fgetbutton(Lorg/telegram/ui/DilogCacheBottomSheet;)Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0, p1, p2}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->setSize(ZJ)V

    .line 234
    iget-object p1, p0, Lorg/telegram/ui/DilogCacheBottomSheet$4;->this$0:Lorg/telegram/ui/DilogCacheBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/DilogCacheBottomSheet;->-$$Nest$fgetcircleDiagramView(Lorg/telegram/ui/DilogCacheBottomSheet;)Lorg/telegram/ui/Components/StorageDiagramView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/StorageDiagramView;->update(Z)V

    :cond_0
    return-void
.end method
