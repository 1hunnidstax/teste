.class public final Lcom/vungle/publisher/ajs;
.super Lcom/vungle/publisher/ahs;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ajs$b;,
        Lcom/vungle/publisher/ajs$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/vungle/publisher/ajs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/vungle/publisher/ajs;

    invoke-direct {v0}, Lcom/vungle/publisher/ajs;-><init>()V

    sput-object v0, Lcom/vungle/publisher/ajs;->b:Lcom/vungle/publisher/ajs;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/vungle/publisher/ahs;-><init>()V

    .line 41
    return-void
.end method

.method static a(II)I
    .locals 1

    .prologue
    .line 125
    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/vungle/publisher/ahs$a;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/vungle/publisher/ajs$a;

    invoke-direct {v0}, Lcom/vungle/publisher/ajs$a;-><init>()V

    return-object v0
.end method
