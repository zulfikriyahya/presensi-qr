<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class GeneralSettings extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id' => [
                'type'           => 'INT',
                'constraint'     => 11,
                'unsigned'       => true,
                'auto_increment' => true
            ],
            'logo' => [
                'type'           => 'VARCHAR',
                'constraint'     => 225,
                'null'           => true
            ],
            'school_name' => [
                'type'           => 'VARCHAR',
                'constraint'     => 225,
                'null'           => true,
                'default'        => 'MTSN 1 PANDEGLANG',
            ],
            'school_year' => [
                'type'           => 'VARCHAR',
                'constraint'     => 225,
                'null'           => true,
                'default'        => '2025/2026',
            ],
            'copyright' => [
                'type'           => 'VARCHAR',
                'constraint'     => 225,
                'null'           => true,
                'default'        => '© 2024 MTSN 1 PANDEGLANG',
            ],
        ]);

        // primary key
        $this->forge->addKey('id', primary: TRUE);


        $this->forge->createTable('general_settings', TRUE);

        // Insert Default Data
        $default['school_name'] = 'MTSN 1 PANDEGLANG';
        $default['school_year'] = '2025/2026';
        $this->db->table('general_settings')->insert($default);
    }

    public function down()
    {
        $this->forge->dropTable('general_settings');
    }
}
