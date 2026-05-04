.class public interface abstract Landroidx/camera/core/impl/Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/Config$OptionPriority;,
        Landroidx/camera/core/impl/Config$Option;,
        Landroidx/camera/core/impl/Config$OptionMatcher;
    }
.end annotation


# virtual methods
.method public abstract containsOption(Landroidx/camera/core/impl/Config$Option;)Z
.end method

.method public abstract findOptions(Ljava/lang/String;Landroidx/camera/core/impl/Config$OptionMatcher;)V
.end method

.method public abstract getOptionPriority(Landroidx/camera/core/impl/Config$Option;)Landroidx/camera/core/impl/Config$OptionPriority;
.end method

.method public abstract getPriorities(Landroidx/camera/core/impl/Config$Option;)Ljava/util/Set;
.end method

.method public abstract listOptions()Ljava/util/Set;
.end method

.method public abstract retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;
.end method

.method public abstract retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract retrieveOptionWithPriority(Landroidx/camera/core/impl/Config$Option;Landroidx/camera/core/impl/Config$OptionPriority;)Ljava/lang/Object;
.end method
