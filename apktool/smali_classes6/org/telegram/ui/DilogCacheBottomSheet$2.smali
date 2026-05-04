.class Lorg/telegram/ui/DilogCacheBottomSheet$2;
.super Lorg/telegram/ui/Components/StorageDiagramView;
.source "SourceFile"


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

.field final synthetic val$delegate:Lorg/telegram/ui/DilogCacheBottomSheet$Delegate;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DilogCacheBottomSheet;Landroid/content/Context;JLorg/telegram/ui/DilogCacheBottomSheet$Delegate;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lorg/telegram/ui/DilogCacheBottomSheet$2;->this$0:Lorg/telegram/ui/DilogCacheBottomSheet;

    iput-object p5, p0, Lorg/telegram/ui/DilogCacheBottomSheet$2;->val$delegate:Lorg/telegram/ui/DilogCacheBottomSheet$Delegate;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/StorageDiagramView;-><init>(Landroid/content/Context;J)V

    return-void
.end method


# virtual methods
.method protected onAvatarClick()V
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/DilogCacheBottomSheet$2;->val$delegate:Lorg/telegram/ui/DilogCacheBottomSheet$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/DilogCacheBottomSheet$Delegate;->onAvatarClick()V

    return-void
.end method
