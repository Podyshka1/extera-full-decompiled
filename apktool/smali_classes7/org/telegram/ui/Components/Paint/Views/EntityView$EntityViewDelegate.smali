.class public interface abstract Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Views/EntityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EntityViewDelegate"
.end annotation


# virtual methods
.method public abstract allowInteraction(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
.end method

.method public abstract getCenterLocation(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[I
.end method

.method public abstract getTransformedTouch(FF[F)V
.end method

.method public abstract isEntityDeletable()Z
.end method

.method public abstract onEntityDragEnd(Z)V
.end method

.method public abstract onEntityDragMultitouchEnd()V
.end method

.method public abstract onEntityDragMultitouchStart()V
.end method

.method public abstract onEntityDragStart()V
.end method

.method public abstract onEntityDragTrash(Z)V
.end method

.method public abstract onEntityDraggedBottom(Z)V
.end method

.method public abstract onEntityDraggedTop(Z)V
.end method

.method public abstract onEntityHandleTouched()V
.end method

.method public abstract onEntityLongClicked(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
.end method

.method public abstract onEntitySelected(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
.end method
