.class public interface abstract Landroidx/camera/core/impl/EncoderProfilesProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Landroidx/camera/core/impl/EncoderProfilesProvider;

.field public static final QUALITY_HIGH_TO_LOW:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 62
    new-instance v0, Landroidx/camera/core/impl/EncoderProfilesProvider$1;

    invoke-direct {v0}, Landroidx/camera/core/impl/EncoderProfilesProvider$1;-><init>()V

    sput-object v0, Landroidx/camera/core/impl/EncoderProfilesProvider;->EMPTY:Landroidx/camera/core/impl/EncoderProfilesProvider;

    const/16 v0, 0xd

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xa

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xb

    .line 78
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x6

    .line 79
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x5

    .line 80
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x4

    .line 81
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v13, 0x9

    .line 82
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x3

    .line 83
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x7

    .line 84
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x2

    .line 85
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    new-array v5, v5, [Ljava/lang/Integer;

    const/16 v21, 0x0

    aput-object v0, v5, v21

    const/4 v0, 0x1

    aput-object v2, v5, v0

    aput-object v4, v5, v19

    aput-object v6, v5, v15

    aput-object v8, v5, v11

    aput-object v10, v5, v9

    aput-object v12, v5, v7

    aput-object v14, v5, v17

    aput-object v16, v5, v3

    aput-object v18, v5, v13

    aput-object v20, v5, v1

    .line 74
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/EncoderProfilesProvider;->QUALITY_HIGH_TO_LOW:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
.end method

.method public abstract hasProfile(I)Z
.end method
