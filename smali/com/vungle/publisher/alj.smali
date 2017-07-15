.class public final Lcom/vungle/publisher/alj;
.super Ljava/lang/Object;
.source "vungle"


# static fields
.field private static final a:Lcom/vungle/publisher/ahq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ahq",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/vungle/publisher/alj$1;

    invoke-direct {v0}, Lcom/vungle/publisher/alj$1;-><init>()V

    sput-object v0, Lcom/vungle/publisher/alj;->a:Lcom/vungle/publisher/ahq;

    return-void
.end method

.method public static a()Lcom/vungle/publisher/ahq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/vungle/publisher/ahq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lcom/vungle/publisher/alj;->a:Lcom/vungle/publisher/ahq;

    return-object v0
.end method
