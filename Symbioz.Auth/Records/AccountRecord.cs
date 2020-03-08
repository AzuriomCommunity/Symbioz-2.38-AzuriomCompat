using Symbioz.ORM;
using Symbioz.Protocol.Selfmade.Enums;
using Symbioz.Protocol.Selfmade.Types;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Symbioz.Auth.Records
{
    [Table("users", false)]
    public class AccountRecord : ITable
    {
        [Column("id"), Primary]
        public int Id;

        [Column("name"), Update]
        public string Nickname;

        [Column("email")]
        public string Username;

        [Column("email_verified_at")]
        public string email_verified_at;

        [Column("password")]
        public string Password;

        [Column("role_id")]
        public string azuriom_role;

        [Column("money")]
        public string money;

        [Column("game_id")]
        public string game_id;

        [Column("access_token")]
        public string access_token;

        [Column("last_login_ip")]
        public string last_login_ip;

        [Column("last_login_at")]
        public string last_login_at;

        [Column("google_2fa_secret")]
        public string google_2fa_secret;

        [Column("is_banned"), Update]
        public bool Banned;

        [Column("is_deleted")]
        public bool is_deleted;

        [Column("remember_token")]
        public string remember_token;

        [Ignore]
        public ServerRoleEnum RoleEnum { get { return (ServerRoleEnum)Role; } }

        [Column("created_at")]
        public string created_at;

        [Column("updated_at")]
        public string updated_at;

        [Column("id")]
        public string id_users;

        public sbyte Role;

        
        public sbyte CharacterSlots;

        [Update]
        public ushort LastSelectedServerId;

        public AccountRecord(int id, string name, string email, string email_verified_at, string password, 
            string role_id, string money, string game_id, string access_token, string last_login_ip, string last_login_at,
            string google_2fa_secret, bool banned, bool is_deleted, string remember_token, string created_at, string updated_at,
            string id_users,
            sbyte role, sbyte characterSlots, ushort lastSelectedServerId)
        {
            this.Id = id;
            this.Username = email;
            this.Password = password;
            this.Nickname = name;
            this.Role = role;
            this.Banned = banned;
            this.CharacterSlots = characterSlots;
            this.LastSelectedServerId = lastSelectedServerId;
        }

        public AccountRecord(int id, string username, string password, string nickname, sbyte role,
            bool banned, sbyte characterSlots, ushort lastSelectedServerId)
        {
            this.Id = id;
            this.Username = username;
            this.Password = password;
            this.Nickname = nickname;
            this.Role = role;
            this.Banned = banned;
            this.CharacterSlots = characterSlots;
            this.LastSelectedServerId = lastSelectedServerId;
        }
        public AccountRecord(string username, string password)
        {
            this.Username = username;
            this.Password = password;
        }
        public AccountData ToAccountData()
        {
            return new AccountData(Id, Username, Password, Nickname, Banned, CharacterSlots, Role, LastSelectedServerId);
        }
        public static AccountData GetAccountByUsername(string username)
        {
            return Query("email", username);
        }
        public static AccountData GetAccountByNickname(string nickname)
        {
            return Query("name", nickname);
        }
        public static AccountRecord GetAccountRecord(int id)
        {
            return DatabaseReader<AccountRecord>.ReadFirst("Id =" + "'" + id + "'");
        }
        private static AccountData Query(string field, string fieldValue)
        {

            var record = DatabaseReader<AccountRecord>.ReadFirst("" + field + " =" + "'" + fieldValue + "'");
            return record != null ? record.ToAccountData() : null;

        }
        static AccountRecord ToAccountRecord(AccountData accountData)
        {
            return new AccountRecord(accountData.Id, accountData.Username, accountData.Password,
                accountData.Nickname, (sbyte)accountData.Role, accountData.Banned,
                accountData.CharacterSlots, accountData.LastSelectedServerId);
        }
        public void Ban()
        {
            Banned = true;
            this.UpdateInstantElement();
        }
        public static bool NicknameExist(string nickname)
        {
            AccountRecord account = DatabaseReader<AccountRecord>.ReadFirst("Nickname =" + "'" + nickname + "'");
            return account != null ? true : false;
        }
        public static void UpdateAccount(AccountData account)
        {
            DatabaseManager.GetInstance().Query(string.Format("INSERT INTO dofus_accounts(`Id`, `Role`, `CharacterSlots`, `LastSelectedServerId`) VALUES('{0}', '{1}', '{2}', '{3}') ON DUPLICATE KEY UPDATE `Role`='{4}', `CharacterSlots`='{5}', `LastSelectedServerId`='{6}'", account.Id, (sbyte)account.Role, account.CharacterSlots, account.LastSelectedServerId, (sbyte)account.Role, account.CharacterSlots, account.LastSelectedServerId), DatabaseManager.GetInstance().UseProvider());
            ToAccountRecord(account).UpdateInstantElement<AccountRecord>();
        }
    }
}
