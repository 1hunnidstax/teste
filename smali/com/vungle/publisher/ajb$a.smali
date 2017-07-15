.class public final Lcom/vungle/publisher/ajb$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ajb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/vungle/publisher/ajb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ajb",
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
    .line 62
    new-instance v0, Lcom/vungle/publisher/ajb;

    invoke-direct {v0}, Lcom/vungle/publisher/ajb;-><init>()V

    sput-object v0, Lcom/vungle/publisher/ajb$a;->a:Lcom/vungle/publisher/ajb;

    return-void
.end method
