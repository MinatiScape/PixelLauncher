.class public final synthetic LV0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV0/f;->b:Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, LV0/f;->b:Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    invoke-static {p0}, Lcom/android/launcher3/notification/NotificationListener;->c(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V

    return-void
.end method
