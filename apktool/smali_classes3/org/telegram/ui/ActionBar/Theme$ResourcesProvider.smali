.class public interface abstract Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/Theme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResourcesProvider"
.end annotation


# virtual methods
.method public abstract applyServiceShaderMatrix(IIFF)V
.end method

.method public abstract getAnimatedEmojiColorFilter()Landroid/graphics/ColorFilter;
.end method

.method public abstract getColor(I)I
.end method

.method public abstract getColorOrDefault(I)I
.end method

.method public abstract getCurrentColor(I)I
.end method

.method public abstract getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getPaint(Ljava/lang/String;)Landroid/graphics/Paint;
.end method

.method public abstract hasGradientService()Z
.end method

.method public abstract isDark()Z
.end method

.method public abstract setAnimatedColor(II)V
.end method
