.class public final enum Lcom/yandex/mapkit/road_events/EventTag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/mapkit/road_events/EventTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yandex/mapkit/road_events/EventTag;

.field public static final enum ACCIDENT:Lcom/yandex/mapkit/road_events/EventTag;

.field public static final enum CHAT:Lcom/yandex/mapkit/road_events/EventTag;

.field public static final enum CLOSED:Lcom/yandex/mapkit/road_events/EventTag;

.field public static final enum CROSS_ROAD_CONTROL:Lcom/yandex/mapkit/road_events/EventTag;

.field public static final enum CROSS_ROAD_DANGER:Lcom/yandex/mapkit/road_events/EventTag;

.field public static final enum DANGER:Lcom/yandex/mapkit/road_events/EventTag;

.field public static final enum DRAWBRIDGE:Lcom/yandex/mapkit/road_events/EventTag;

.field public static final enum FEEDBACK:Lcom/yandex/mapkit/road_events/EventTag;

.field public static final enum LANE_CONTROL:Lcom/yandex/mapkit/road_events/EventTag;

.field public static final enum LOCAL_CHAT:Lcom/yandex/mapkit/road_events/EventTag;

.field public static final enum MOBILE_CONTROL:Lcom/yandex/mapkit/road_events/EventTag;

.field public static final enum NO_STOPPING_CONTROL:Lcom/yandex/mapkit/road_events/EventTag;

.field public static final enum OTHER:Lcom/yandex/mapkit/road_events/EventTag;

.field public static final enum OVERTAKING_DANGER:Lcom/yandex/mapkit/road_events/EventTag;

.field public static final enum PEDESTRIAN_DANGER:Lcom/yandex/mapkit/road_events/EventTag;

.field public static final enum POLICE:Lcom/yandex/mapkit/road_events/EventTag;

.field public static final enum POLICE_PATROL:Lcom/yandex/mapkit/road_events/EventTag;

.field public static final enum RECONSTRUCTION:Lcom/yandex/mapkit/road_events/EventTag;

.field public static final enum ROAD_MARKING_CONTROL:Lcom/yandex/mapkit/road_events/EventTag;

.field public static final enum SCHOOL:Lcom/yandex/mapkit/road_events/EventTag;

.field public static final enum SPEED_CONTROL:Lcom/yandex/mapkit/road_events/EventTag;

.field public static final enum TRAFFIC_CONTROL:Lcom/yandex/mapkit/road_events/EventTag;


# direct methods
.method static constructor <clinit>()V
    .locals 45

    .line 4
    new-instance v0, Lcom/yandex/mapkit/road_events/EventTag;

    const-string v1, "OTHER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yandex/mapkit/road_events/EventTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/mapkit/road_events/EventTag;->OTHER:Lcom/yandex/mapkit/road_events/EventTag;

    .line 5
    new-instance v1, Lcom/yandex/mapkit/road_events/EventTag;

    const-string v3, "FEEDBACK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/yandex/mapkit/road_events/EventTag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/yandex/mapkit/road_events/EventTag;->FEEDBACK:Lcom/yandex/mapkit/road_events/EventTag;

    .line 6
    new-instance v3, Lcom/yandex/mapkit/road_events/EventTag;

    const-string v5, "CHAT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/yandex/mapkit/road_events/EventTag;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/yandex/mapkit/road_events/EventTag;->CHAT:Lcom/yandex/mapkit/road_events/EventTag;

    .line 10
    new-instance v5, Lcom/yandex/mapkit/road_events/EventTag;

    const-string v7, "LOCAL_CHAT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/yandex/mapkit/road_events/EventTag;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/yandex/mapkit/road_events/EventTag;->LOCAL_CHAT:Lcom/yandex/mapkit/road_events/EventTag;

    .line 14
    new-instance v7, Lcom/yandex/mapkit/road_events/EventTag;

    const-string v9, "DRAWBRIDGE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/yandex/mapkit/road_events/EventTag;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/yandex/mapkit/road_events/EventTag;->DRAWBRIDGE:Lcom/yandex/mapkit/road_events/EventTag;

    .line 15
    new-instance v9, Lcom/yandex/mapkit/road_events/EventTag;

    const-string v11, "CLOSED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/yandex/mapkit/road_events/EventTag;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/yandex/mapkit/road_events/EventTag;->CLOSED:Lcom/yandex/mapkit/road_events/EventTag;

    .line 16
    new-instance v11, Lcom/yandex/mapkit/road_events/EventTag;

    const-string v13, "RECONSTRUCTION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/yandex/mapkit/road_events/EventTag;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/yandex/mapkit/road_events/EventTag;->RECONSTRUCTION:Lcom/yandex/mapkit/road_events/EventTag;

    .line 17
    new-instance v13, Lcom/yandex/mapkit/road_events/EventTag;

    const-string v15, "ACCIDENT"

    move/from16 v16, v2

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2}, Lcom/yandex/mapkit/road_events/EventTag;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/yandex/mapkit/road_events/EventTag;->ACCIDENT:Lcom/yandex/mapkit/road_events/EventTag;

    .line 21
    new-instance v15, Lcom/yandex/mapkit/road_events/EventTag;

    move/from16 v17, v2

    const-string v2, "DANGER"

    move/from16 v18, v4

    const/16 v4, 0x8

    invoke-direct {v15, v2, v4}, Lcom/yandex/mapkit/road_events/EventTag;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/yandex/mapkit/road_events/EventTag;->DANGER:Lcom/yandex/mapkit/road_events/EventTag;

    .line 22
    new-instance v2, Lcom/yandex/mapkit/road_events/EventTag;

    move/from16 v19, v4

    const-string v4, "SCHOOL"

    move/from16 v20, v6

    const/16 v6, 0x9

    invoke-direct {v2, v4, v6}, Lcom/yandex/mapkit/road_events/EventTag;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/yandex/mapkit/road_events/EventTag;->SCHOOL:Lcom/yandex/mapkit/road_events/EventTag;

    .line 23
    new-instance v4, Lcom/yandex/mapkit/road_events/EventTag;

    move/from16 v21, v6

    const-string v6, "OVERTAKING_DANGER"

    move/from16 v22, v8

    const/16 v8, 0xa

    invoke-direct {v4, v6, v8}, Lcom/yandex/mapkit/road_events/EventTag;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/yandex/mapkit/road_events/EventTag;->OVERTAKING_DANGER:Lcom/yandex/mapkit/road_events/EventTag;

    .line 24
    new-instance v6, Lcom/yandex/mapkit/road_events/EventTag;

    move/from16 v23, v8

    const-string v8, "PEDESTRIAN_DANGER"

    move/from16 v24, v10

    const/16 v10, 0xb

    invoke-direct {v6, v8, v10}, Lcom/yandex/mapkit/road_events/EventTag;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/yandex/mapkit/road_events/EventTag;->PEDESTRIAN_DANGER:Lcom/yandex/mapkit/road_events/EventTag;

    .line 25
    new-instance v8, Lcom/yandex/mapkit/road_events/EventTag;

    move/from16 v25, v10

    const-string v10, "CROSS_ROAD_DANGER"

    move/from16 v26, v12

    const/16 v12, 0xc

    invoke-direct {v8, v10, v12}, Lcom/yandex/mapkit/road_events/EventTag;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/yandex/mapkit/road_events/EventTag;->CROSS_ROAD_DANGER:Lcom/yandex/mapkit/road_events/EventTag;

    .line 30
    new-instance v10, Lcom/yandex/mapkit/road_events/EventTag;

    move/from16 v27, v12

    const-string v12, "POLICE"

    move/from16 v28, v14

    const/16 v14, 0xd

    invoke-direct {v10, v12, v14}, Lcom/yandex/mapkit/road_events/EventTag;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/yandex/mapkit/road_events/EventTag;->POLICE:Lcom/yandex/mapkit/road_events/EventTag;

    .line 34
    new-instance v12, Lcom/yandex/mapkit/road_events/EventTag;

    move/from16 v29, v14

    const-string v14, "LANE_CONTROL"

    move-object/from16 v30, v0

    const/16 v0, 0xe

    invoke-direct {v12, v14, v0}, Lcom/yandex/mapkit/road_events/EventTag;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/yandex/mapkit/road_events/EventTag;->LANE_CONTROL:Lcom/yandex/mapkit/road_events/EventTag;

    .line 35
    new-instance v14, Lcom/yandex/mapkit/road_events/EventTag;

    move/from16 v31, v0

    const-string v0, "ROAD_MARKING_CONTROL"

    move-object/from16 v32, v1

    const/16 v1, 0xf

    invoke-direct {v14, v0, v1}, Lcom/yandex/mapkit/road_events/EventTag;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/yandex/mapkit/road_events/EventTag;->ROAD_MARKING_CONTROL:Lcom/yandex/mapkit/road_events/EventTag;

    .line 36
    new-instance v0, Lcom/yandex/mapkit/road_events/EventTag;

    move/from16 v33, v1

    const-string v1, "CROSS_ROAD_CONTROL"

    move-object/from16 v34, v2

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/yandex/mapkit/road_events/EventTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/mapkit/road_events/EventTag;->CROSS_ROAD_CONTROL:Lcom/yandex/mapkit/road_events/EventTag;

    .line 37
    new-instance v1, Lcom/yandex/mapkit/road_events/EventTag;

    move/from16 v35, v2

    const-string v2, "NO_STOPPING_CONTROL"

    move-object/from16 v36, v0

    const/16 v0, 0x11

    invoke-direct {v1, v2, v0}, Lcom/yandex/mapkit/road_events/EventTag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/yandex/mapkit/road_events/EventTag;->NO_STOPPING_CONTROL:Lcom/yandex/mapkit/road_events/EventTag;

    .line 38
    new-instance v2, Lcom/yandex/mapkit/road_events/EventTag;

    move/from16 v37, v0

    const-string v0, "MOBILE_CONTROL"

    move-object/from16 v38, v1

    const/16 v1, 0x12

    invoke-direct {v2, v0, v1}, Lcom/yandex/mapkit/road_events/EventTag;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/yandex/mapkit/road_events/EventTag;->MOBILE_CONTROL:Lcom/yandex/mapkit/road_events/EventTag;

    .line 39
    new-instance v0, Lcom/yandex/mapkit/road_events/EventTag;

    move/from16 v39, v1

    const-string v1, "SPEED_CONTROL"

    move-object/from16 v40, v2

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/yandex/mapkit/road_events/EventTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/mapkit/road_events/EventTag;->SPEED_CONTROL:Lcom/yandex/mapkit/road_events/EventTag;

    .line 40
    new-instance v1, Lcom/yandex/mapkit/road_events/EventTag;

    move/from16 v41, v2

    const-string v2, "TRAFFIC_CONTROL"

    move-object/from16 v42, v0

    const/16 v0, 0x14

    invoke-direct {v1, v2, v0}, Lcom/yandex/mapkit/road_events/EventTag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/yandex/mapkit/road_events/EventTag;->TRAFFIC_CONTROL:Lcom/yandex/mapkit/road_events/EventTag;

    .line 41
    new-instance v2, Lcom/yandex/mapkit/road_events/EventTag;

    move/from16 v43, v0

    const-string v0, "POLICE_PATROL"

    move-object/from16 v44, v1

    const/16 v1, 0x15

    invoke-direct {v2, v0, v1}, Lcom/yandex/mapkit/road_events/EventTag;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/yandex/mapkit/road_events/EventTag;->POLICE_PATROL:Lcom/yandex/mapkit/road_events/EventTag;

    const/16 v0, 0x16

    .line 3
    new-array v0, v0, [Lcom/yandex/mapkit/road_events/EventTag;

    aput-object v30, v0, v16

    aput-object v32, v0, v18

    aput-object v3, v0, v20

    aput-object v5, v0, v22

    aput-object v7, v0, v24

    aput-object v9, v0, v26

    aput-object v11, v0, v28

    aput-object v13, v0, v17

    aput-object v15, v0, v19

    aput-object v34, v0, v21

    aput-object v4, v0, v23

    aput-object v6, v0, v25

    aput-object v8, v0, v27

    aput-object v10, v0, v29

    aput-object v12, v0, v31

    aput-object v14, v0, v33

    aput-object v36, v0, v35

    aput-object v38, v0, v37

    aput-object v40, v0, v39

    aput-object v42, v0, v41

    aput-object v44, v0, v43

    aput-object v2, v0, v1

    sput-object v0, Lcom/yandex/mapkit/road_events/EventTag;->$VALUES:[Lcom/yandex/mapkit/road_events/EventTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/mapkit/road_events/EventTag;
    .locals 1

    .line 3
    const-class v0, Lcom/yandex/mapkit/road_events/EventTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/mapkit/road_events/EventTag;

    return-object p0
.end method

.method public static values()[Lcom/yandex/mapkit/road_events/EventTag;
    .locals 1

    .line 3
    sget-object v0, Lcom/yandex/mapkit/road_events/EventTag;->$VALUES:[Lcom/yandex/mapkit/road_events/EventTag;

    invoke-virtual {v0}, [Lcom/yandex/mapkit/road_events/EventTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/mapkit/road_events/EventTag;

    return-object v0
.end method
