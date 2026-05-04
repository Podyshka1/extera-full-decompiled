.class public interface abstract Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AttachedSheet"
.end annotation


# virtual methods
.method public abstract attachedToParent()Z
.end method

.method public abstract dismiss()V
.end method

.method public abstract dismiss(Z)V
.end method

.method public abstract getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;
.end method

.method public abstract getNavigationBarColor(I)I
.end method

.method public abstract getWindowView()Landroid/view/View;
.end method

.method public abstract isAttachedLightStatusBar()Z
.end method

.method public abstract isFullyVisible()Z
.end method

.method public abstract isShown()Z
.end method

.method public abstract onAttachedBackPressed()Z
.end method

.method public abstract setKeyboardHeightFromParent(I)V
.end method

.method public abstract setLastVisible(Z)V
.end method

.method public abstract setOnDismissListener(Ljava/lang/Runnable;)V
.end method

.method public abstract showDialog(Landroid/app/Dialog;)Z
.end method
