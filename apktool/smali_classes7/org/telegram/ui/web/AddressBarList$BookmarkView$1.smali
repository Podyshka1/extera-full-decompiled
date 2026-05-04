.class Lorg/telegram/ui/web/AddressBarList$BookmarkView$1;
.super Lorg/telegram/ui/Components/CheckBox2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/web/AddressBarList$BookmarkView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/web/AddressBarList$BookmarkView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/web/AddressBarList$BookmarkView;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 687
    iput-object p1, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView$1;->this$0:Lorg/telegram/ui/web/AddressBarList$BookmarkView;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 690
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 691
    iget-object v0, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView$1;->this$0:Lorg/telegram/ui/web/AddressBarList$BookmarkView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
