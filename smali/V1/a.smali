.class public final synthetic LV1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV1/a;->b:Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, LV1/a;->b:Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;

    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->h(Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;)V

    return-void
.end method
