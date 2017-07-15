.class Lcom/moat/analytics/mobile/inm/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/inm/bb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moat/analytics/mobile/inm/bb",
        "<",
        "Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/moat/analytics/mobile/inm/base/functional/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/inm/base/functional/a",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/moat/analytics/mobile/inm/base/functional/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/inm/base/functional/a",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    invoke-static {}, Lcom/moat/analytics/mobile/inm/base/functional/a;->a()Lcom/moat/analytics/mobile/inm/base/functional/a;

    move-result-object v2

    invoke-static {}, Lcom/moat/analytics/mobile/inm/base/functional/a;->a()Lcom/moat/analytics/mobile/inm/base/functional/a;

    move-result-object v0

    :try_start_0
    const-class v1, Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;

    const-string v3, "track"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/util/Map;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-class v3, Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;

    const-string v4, "stopTracking"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v1}, Lcom/moat/analytics/mobile/inm/base/functional/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/inm/base/functional/a;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-static {v3}, Lcom/moat/analytics/mobile/inm/base/functional/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/inm/base/functional/a;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    sput-object v1, Lcom/moat/analytics/mobile/inm/af;->a:Lcom/moat/analytics/mobile/inm/base/functional/a;

    sput-object v0, Lcom/moat/analytics/mobile/inm/af;->b:Lcom/moat/analytics/mobile/inm/base/functional/a;

    return-void

    :catch_0
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    :goto_1
    invoke-static {v2}, Lcom/moat/analytics/mobile/inm/base/exception/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;

    return-object v0
.end method
