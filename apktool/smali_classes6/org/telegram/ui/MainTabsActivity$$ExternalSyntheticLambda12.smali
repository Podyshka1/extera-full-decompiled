.class public final synthetic Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/ItemOptions;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/ui/Components/ItemOptions;

    iput-object p2, p0, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda12;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/ui/Components/ItemOptions;

    iget-object v1, p0, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda12;->f$1:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/MainTabsActivity;->$r8$lambda$Ed6YdXW-ynN9CBuScrBb8wTiR_o(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
