.class public abstract Landroidx/datastore/migrations/SharedPreferencesMigration_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MIGRATE_ALL_KEYS:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 322
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Landroidx/datastore/migrations/SharedPreferencesMigration_androidKt;->MIGRATE_ALL_KEYS:Ljava/util/Set;

    return-void
.end method

.method public static final getMIGRATE_ALL_KEYS()Ljava/util/Set;
    .locals 1

    .line 322
    sget-object v0, Landroidx/datastore/migrations/SharedPreferencesMigration_androidKt;->MIGRATE_ALL_KEYS:Ljava/util/Set;

    return-object v0
.end method
