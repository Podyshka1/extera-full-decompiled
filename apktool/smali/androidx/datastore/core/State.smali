.class public abstract Landroidx/datastore/core/State;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final version:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Landroidx/datastore/core/State;->version:I

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroidx/datastore/core/State;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getVersion()I
    .locals 1

    .line 23
    iget v0, p0, Landroidx/datastore/core/State;->version:I

    return v0
.end method
