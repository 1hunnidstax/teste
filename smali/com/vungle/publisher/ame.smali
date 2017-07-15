.class public final Lcom/vungle/publisher/ame;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ame$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/vungle/publisher/ame$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/vungle/publisher/ame$a;

    invoke-direct {v0}, Lcom/vungle/publisher/ame$a;-><init>()V

    sput-object v0, Lcom/vungle/publisher/ame;->a:Lcom/vungle/publisher/ame$a;

    return-void
.end method

.method public static a()Lcom/vungle/publisher/ahv;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/vungle/publisher/ame;->a:Lcom/vungle/publisher/ame$a;

    return-object v0
.end method

.method public static a(Lcom/vungle/publisher/aie;)Lcom/vungle/publisher/ahv;
    .locals 1

    .prologue
    .line 78
    invoke-static {p0}, Lcom/vungle/publisher/amb;->a(Lcom/vungle/publisher/aie;)Lcom/vungle/publisher/amb;

    move-result-object v0

    return-object v0
.end method
