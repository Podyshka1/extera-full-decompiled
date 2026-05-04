.class Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$1;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->doClearCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;Landroid/content/Context;Z)V
    .locals 0

    .line 1973
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$1;->this$1:Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method protected canDismissWithTouchOutside()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
