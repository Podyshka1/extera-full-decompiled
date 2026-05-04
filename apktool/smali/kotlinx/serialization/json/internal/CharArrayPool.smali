.class public final Lkotlinx/serialization/json/internal/CharArrayPool;
.super Lkotlinx/serialization/json/internal/CharArrayPoolBase;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/json/internal/CharArrayPool;

    invoke-direct {v0}, Lkotlinx/serialization/json/internal/CharArrayPool;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/internal/CharArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/CharArrayPoolBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final release([C)V
    .locals 1

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->releaseImpl([C)V

    return-void
.end method

.method public final take()[C
    .locals 1

    const/16 v0, 0x80

    .line 37
    invoke-super {p0, v0}, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->take(I)[C

    move-result-object v0

    return-object v0
.end method
