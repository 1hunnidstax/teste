.class public final Lcom/tapjoy/internal/cv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/tapjoy/internal/cp$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 1982
    sget-object v0, Lcom/tapjoy/internal/ct;->a:Lcom/tapjoy/internal/cp;

    const-string v1, "="

    .line 2325
    new-instance v2, Lcom/tapjoy/internal/cp$a;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/tapjoy/internal/cp$a;-><init>(Lcom/tapjoy/internal/cp;Ljava/lang/String;B)V

    .line 1982
    sput-object v2, Lcom/tapjoy/internal/cv;->a:Lcom/tapjoy/internal/cp$a;

    return-void
.end method

.method public static a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public static b()Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 151
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method
