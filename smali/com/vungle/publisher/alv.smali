.class final Lcom/vungle/publisher/alv;
.super Lcom/vungle/publisher/alu;
.source "vungle"


# static fields
.field private static final a:Lcom/vungle/publisher/alv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/vungle/publisher/alv;

    invoke-direct {v0}, Lcom/vungle/publisher/alv;-><init>()V

    sput-object v0, Lcom/vungle/publisher/alv;->a:Lcom/vungle/publisher/alv;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vungle/publisher/alu;-><init>()V

    .line 29
    return-void
.end method

.method public static a()Lcom/vungle/publisher/alu;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/vungle/publisher/alv;->a:Lcom/vungle/publisher/alv;

    return-object v0
.end method
