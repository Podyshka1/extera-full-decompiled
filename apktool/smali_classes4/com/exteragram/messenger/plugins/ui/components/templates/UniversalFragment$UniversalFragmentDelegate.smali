.class public interface abstract Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UniversalFragmentDelegate"
.end annotation


# virtual methods
.method public abstract afterCreateView(Landroid/view/View;)Landroid/view/View;
.end method

.method public abstract beforeCreateView()Landroid/view/View;
.end method

.method public abstract fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/UItem;",
            ">;",
            "Lorg/telegram/ui/Components/UniversalAdapter;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract onBackPressed()Ljava/lang/Boolean;
.end method

.method public abstract onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
.end method

.method public abstract onFragmentCreate()V
.end method

.method public abstract onFragmentDestroy()V
.end method

.method public abstract onLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
.end method

.method public abstract onMenuItemClick(I)V
.end method
