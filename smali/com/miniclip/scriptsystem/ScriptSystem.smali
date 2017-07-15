.class public Lcom/miniclip/scriptsystem/ScriptSystem;
.super Ljava/lang/Object;
.source "ScriptSystem.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "ScriptSystem"

.field private static globalID:Ljava/lang/String;

.field protected static mUSE_SOCKET_BROKER:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miniclip/scriptsystem/ScriptSystem;->mUSE_SOCKET_BROKER:Z

    .line 30
    const-string v0, ""

    sput-object v0, Lcom/miniclip/scriptsystem/ScriptSystem;->globalID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/miniclip/scriptsystem/ScriptSystem;->globalID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-static {p0}, Lcom/miniclip/scriptsystem/ScriptSystem;->setGlobalIdJNI(Ljava/lang/String;)V

    return-void
.end method

.method public static generateGlobalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miniclip/scriptsystem/ScriptSystem;->globalID:Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/miniclip/scriptsystem/ScriptSystem;->globalID:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Lcom/miniclip/scriptsystem/ScriptSystemInterface;)V
    .locals 1
    .param p0, "ssi"    # Lcom/miniclip/scriptsystem/ScriptSystemInterface;

    .prologue
    .line 20
    invoke-static {}, Lcom/miniclip/scriptsystem/ScriptSystem;->useSocketBroker()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-static {}, Lcom/miniclip/scriptsystem/ScriptSystem;->triggerGlobalIdJNICall()V

    .line 23
    invoke-interface {p0}, Lcom/miniclip/scriptsystem/ScriptSystemInterface;->addAutomationLabel()V

    .line 25
    :cond_0
    return-void
.end method

.method private static native setGlobalIdJNI(Ljava/lang/String;)V
.end method

.method public static triggerGlobalIdJNICall()V
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/miniclip/framework/ThreadingContext;->Main:Lcom/miniclip/framework/ThreadingContext;

    new-instance v1, Lcom/miniclip/scriptsystem/ScriptSystem$1;

    invoke-direct {v1}, Lcom/miniclip/scriptsystem/ScriptSystem$1;-><init>()V

    invoke-static {v0, v1}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method public static useSocketBroker()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/miniclip/scriptsystem/ScriptSystem;->mUSE_SOCKET_BROKER:Z

    return v0
.end method
