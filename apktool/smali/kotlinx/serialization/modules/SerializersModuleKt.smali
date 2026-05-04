.class public abstract Lkotlinx/serialization/modules/SerializersModuleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EmptySerializersModule:Lkotlinx/serialization/modules/SerializersModule;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 82
    new-instance v0, Lkotlinx/serialization/modules/SerialModuleImpl;

    .line 83
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 84
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 85
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 86
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 87
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x0

    .line 82
    invoke-direct/range {v0 .. v6}, Lkotlinx/serialization/modules/SerialModuleImpl;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)V

    sput-object v0, Lkotlinx/serialization/modules/SerializersModuleKt;->EmptySerializersModule:Lkotlinx/serialization/modules/SerializersModule;

    return-void
.end method

.method public static final getEmptySerializersModule()Lkotlinx/serialization/modules/SerializersModule;
    .locals 1

    .line 78
    sget-object v0, Lkotlinx/serialization/modules/SerializersModuleKt;->EmptySerializersModule:Lkotlinx/serialization/modules/SerializersModule;

    return-object v0
.end method
