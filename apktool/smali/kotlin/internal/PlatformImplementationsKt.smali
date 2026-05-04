.class public abstract Lkotlin/internal/PlatformImplementationsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IMPLEMENTATIONS:Lkotlin/internal/PlatformImplementations;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lkotlin/internal/jdk8/JDK8PlatformImplementations;

    invoke-direct {v0}, Lkotlin/internal/jdk8/JDK8PlatformImplementations;-><init>()V

    sput-object v0, Lkotlin/internal/PlatformImplementationsKt;->IMPLEMENTATIONS:Lkotlin/internal/PlatformImplementations;

    return-void
.end method
