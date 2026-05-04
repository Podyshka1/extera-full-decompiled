.class public final Landroidx/datastore/core/UpdatingDataContextElement$Companion$Key;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/CoroutineContext$Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/core/UpdatingDataContextElement$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/datastore/core/UpdatingDataContextElement$Companion$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/datastore/core/UpdatingDataContextElement$Companion$Key;

    invoke-direct {v0}, Landroidx/datastore/core/UpdatingDataContextElement$Companion$Key;-><init>()V

    sput-object v0, Landroidx/datastore/core/UpdatingDataContextElement$Companion$Key;->INSTANCE:Landroidx/datastore/core/UpdatingDataContextElement$Companion$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
