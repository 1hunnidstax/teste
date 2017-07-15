.class public final enum Lcom/miniclip/framework/ThreadingContext;
.super Ljava/lang/Enum;
.source "ThreadingContext.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miniclip/framework/ThreadingContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miniclip/framework/ThreadingContext;

.field public static final enum AndroidUi:Lcom/miniclip/framework/ThreadingContext;

.field public static final enum GlThread:Lcom/miniclip/framework/ThreadingContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum Main:Lcom/miniclip/framework/ThreadingContext;

.field public static final enum UiThread:Lcom/miniclip/framework/ThreadingContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/miniclip/framework/ThreadingContext;

    const-string v1, "AndroidUi"

    invoke-direct {v0, v1, v2}, Lcom/miniclip/framework/ThreadingContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miniclip/framework/ThreadingContext;->AndroidUi:Lcom/miniclip/framework/ThreadingContext;

    .line 5
    new-instance v0, Lcom/miniclip/framework/ThreadingContext;

    const-string v1, "Main"

    invoke-direct {v0, v1, v3}, Lcom/miniclip/framework/ThreadingContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miniclip/framework/ThreadingContext;->Main:Lcom/miniclip/framework/ThreadingContext;

    .line 6
    new-instance v0, Lcom/miniclip/framework/ThreadingContext;

    const-string v1, "GlThread"

    invoke-direct {v0, v1, v4}, Lcom/miniclip/framework/ThreadingContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miniclip/framework/ThreadingContext;->GlThread:Lcom/miniclip/framework/ThreadingContext;

    .line 7
    new-instance v0, Lcom/miniclip/framework/ThreadingContext;

    const-string v1, "UiThread"

    invoke-direct {v0, v1, v5}, Lcom/miniclip/framework/ThreadingContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miniclip/framework/ThreadingContext;->UiThread:Lcom/miniclip/framework/ThreadingContext;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miniclip/framework/ThreadingContext;

    sget-object v1, Lcom/miniclip/framework/ThreadingContext;->AndroidUi:Lcom/miniclip/framework/ThreadingContext;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miniclip/framework/ThreadingContext;->Main:Lcom/miniclip/framework/ThreadingContext;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miniclip/framework/ThreadingContext;->GlThread:Lcom/miniclip/framework/ThreadingContext;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miniclip/framework/ThreadingContext;->UiThread:Lcom/miniclip/framework/ThreadingContext;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miniclip/framework/ThreadingContext;->$VALUES:[Lcom/miniclip/framework/ThreadingContext;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miniclip/framework/ThreadingContext;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/miniclip/framework/ThreadingContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miniclip/framework/ThreadingContext;

    return-object v0
.end method

.method public static values()[Lcom/miniclip/framework/ThreadingContext;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/miniclip/framework/ThreadingContext;->$VALUES:[Lcom/miniclip/framework/ThreadingContext;

    invoke-virtual {v0}, [Lcom/miniclip/framework/ThreadingContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miniclip/framework/ThreadingContext;

    return-object v0
.end method
